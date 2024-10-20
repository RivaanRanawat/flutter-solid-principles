// Another example of Single Responsibility Principle

class ReportContent {
  String generateContent() {
    return 'Report Content';
  }
}

class ReportFormat {
  String format(String content) {
    return 'Formatted Report: $content';
  }
}

class Report {
  final ReportContent _content;
  final ReportFormat _format;

  Report(this._content, this._format);

  String compile() {
    String content = _content.generateContent();
    String formattedReport = _format.format(content);
    return formattedReport;
  }
}

void main() {
  ReportContent reportContent = ReportContent();
  ReportFormat reportFormat = ReportFormat();
  Report myReport = Report(reportContent, reportFormat);
  String compiledReport = myReport.compile();

  // Print the report
  print(compiledReport);
}
