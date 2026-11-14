
load("render.star", "render")
load("time.star", "time")

def main(config):
    timezone = config.get("timezone") or "America/New_York"
    now = time.now().in_location(timezone)

    return render.Root(
        child = render.Box(
            child = render.Text(
                content = now.format("3:04 PM"),
                font = "6x13",
                color = "#FFFFFF",
            ),
        ),
    )
