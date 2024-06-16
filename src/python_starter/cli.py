import click
from python_starter.commands.hello_world import hello_world


@click.group()
def cli():
    pass


cli.add_command(hello_world, "hello")

if __name__ == "__main__":
    cli()
