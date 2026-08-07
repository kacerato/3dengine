.class public LEi/A$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEi/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(JII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ref",
            "tmin",
            "tmax"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LEi/A$c;->a:J

    iput p3, p0, LEi/A$c;->b:I

    iput p4, p0, LEi/A$c;->c:I

    return-void
.end method
