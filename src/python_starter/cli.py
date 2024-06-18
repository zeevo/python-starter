import click

from python_starter.commands.hello import hello


@click.group()
def cli():
    pass


cli.add_command(hello, "hello")

if __name__ == "__main__":
    cli()
