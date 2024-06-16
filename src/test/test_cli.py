from click.testing import CliRunner

from python_starter.cli import cli


def test_example():
    runner = CliRunner()
    result = runner.invoke(cli, ["hello"])
    assert result.exit_code == 0
    assert result.output == "Hello world.\n"
