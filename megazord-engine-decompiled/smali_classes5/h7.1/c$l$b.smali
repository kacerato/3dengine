.class public Lh7/c$l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LRb/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/c$l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh7/c$l;


# direct methods
.method public constructor <init>(Lh7/c$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lh7/c$l$b;->a:Lh7/c$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "w",
            "h",
            "color"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p1, p5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->g0(I)V

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->Y(I)V

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->X(I)V

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return p1
.end method
