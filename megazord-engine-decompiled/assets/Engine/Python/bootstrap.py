"""Entrypoint experimental; não é executado sem um backend Python Android."""

def on_start(ctx):
    ctx.log("Python bootstrap ready")

def on_event(ctx, name, value=None):
    ctx.log("event: %s" % name)
