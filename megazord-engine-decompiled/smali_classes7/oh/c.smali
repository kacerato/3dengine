.class public Loh/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lph/o;

.field public b:Loh/a;


# direct methods
.method public constructor <init>(Lph/o;Loh/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "mtl"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loh/c;->a:Lph/o;

    iput-object p2, p0, Loh/c;->b:Loh/a;

    return-void
.end method
