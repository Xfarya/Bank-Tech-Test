require './lib/statement_printer'

describe StatementPrint do
  let(:statementprint) { StatementPrint.new(statement) }
  let(:statement) { [["11/06/21", 0.00, 0.00, 0.00]] }

 describe '#print_statement' do
  it 'formats columns and data for statement' do
    expect(statementprint.print_statement).to eq [["11/06/21", 0.00, 0.00, 0.00]]
  end
end

end