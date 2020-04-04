#include <iostream>
#include <cstdlib>
#include <unistd.h>

#include <string>
#include <vector>

using namespace std;

#include "../include/string_func.cpp"
#include "../include/intouch_tags.cpp"

int main(int argc, char* argv[])
{
string sInputLine;
vector<string> vsInputLines;
vector<string> vsInputColumns;
vector<string> vsTagColumns;
int iType;
string sOutput;
string sProjectId;
string sProjectComment;
string sSCHEMA;
string sQ = "\""; // "

sProjectId = sGetArgv(argc, argv, "ProjectId");
if (sProjectId == "") { sProjectId = "0"; }
sSCHEMA = sGetArgv(argc, argv, "schema");
if (sSCHEMA == "") { sSCHEMA = "tagname"; }

// read lines from input to vector(array) of strings
do {
	getline(cin, sInputLine);
	if (sInputLine.size() > 0) {
		vsInputLines.push_back(sInputLine);
	}
} while (sInputLine != "");

// load vector with Tag Types
IntouchTagTypes();
iType = -1;

for(int i = 1;i <= vsInputLines.size() - 1;i++)
{
	sInputLine = vsInputLines[i];
	vsInputColumns = sSplit(sInputLine, ";");
	if(vsInputColumns[0] == "\"ProjectId\"") {
		sProjectId = vsInputColumns[11];
		sProjectComment = sEraseAllSubStr(vsInputColumns[2], "\"");
		break;
	}
}

for(int j = 0;j <= vsIntouchTagTypes.size() - 1;j++) {
	vsTagColumns = sSplit(vsIntouchTagTypes[j], ";");
	sOutput = "DELETE FROM " + sSCHEMA + "." + sQ + sLeft(vsTagColumns[0], 1) + sQ;
	sOutput += " WHERE " + sQ + "ProjectId" + sQ + "=" + sProjectId + ";";
	cout << sOutput << endl;
}

sOutput = "DELETE FROM " + sSCHEMA + ".project WHERE " + sQ + "ProjectId" + sQ + "=" + sProjectId + ";";
cout << sOutput << endl;
sOutput = "INSERT INTO " + sSCHEMA + ".project (" + sQ + "ProjectId" + sQ + ", " + sQ + "Comment" + sQ + ") ";
sOutput += " VALUES (" + sProjectId + ", '" + sProjectComment + "');";
cout << sOutput << endl;

for(int i = 1;i <= vsInputLines.size() - 1;i++)
{
	sInputLine = vsInputLines[i];
	vsInputColumns = sSplit(sInputLine, ";");
	for(int j = 0;j <= vsIntouchTagTypes.size() - 1;j++)
	{
		vsTagColumns = sSplit(vsIntouchTagTypes[j], ";");
		if(vsInputColumns[0] == vsTagColumns[0]) {
			iType = j;
		}
	}
	vsTagColumns = sSplit(vsIntouchTagTypes[iType], ";");
	sOutput = "INSERT INTO " + sSCHEMA + "." + sQ + sLeft(vsTagColumns[0],1) + sQ;
	sOutput += " (" + sQ + "ProjectId" + sQ + ", " + sQ + "Name" + sQ + ", ";
	for(int j = 1;j <= vsTagColumns.size() - 1;j++)
	{
		sOutput += sQ + vsTagColumns[j] + sQ + ", ";
	}
	sOutput = sRight(sOutput,2) + ") VALUES (" + sProjectId + ", ";	

	for(int j = 0; j <= vsInputColumns.size() - 1; j++)
	{
		sOutput += "'" + sEraseAllSubStr(vsInputColumns[j], "\"") + "', ";
	}
	sOutput = sRight(sOutput,4) + "');";
	if(vsInputColumns[0] != vsTagColumns[0]){
		cout << sOutput << endl;
	}
}

return 0;
}
