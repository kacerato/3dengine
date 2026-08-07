.class public LH4/g;
.super LH4/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LH4/g$a;
    }
.end annotation


# instance fields
.field public a:LH4/g$a;


# direct methods
.method public constructor <init>(LH4/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    invoke-direct {p0}, LH4/f;-><init>()V

    iput-object p1, p0, LH4/g;->a:LH4/g$a;

    return-void
.end method


# virtual methods
.method public a()LH4/g$a;
    .locals 1

    iget-object v0, p0, LH4/g;->a:LH4/g$a;

    return-object v0
.end method
