.class public LO5/e$g;
.super LB7/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO5/e;->o2(Ljava/util/List;Ljava/lang/String;LO5/e$u;LO5/e$v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:LO5/e;


# direct methods
.method public constructor <init>(LO5/e;Ljava/lang/String;Ljava/lang/String;LB7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "name",
            "path",
            "folder"
        }
    .end annotation

    iput-object p1, p0, LO5/e$g;->r:LO5/e;

    invoke-direct {p0, p2, p3, p4}, LB7/e;-><init>(Ljava/lang/String;Ljava/lang/String;LB7/d;)V

    new-instance p1, LO5/e$g$a;

    invoke-direct {p1, p0}, LO5/e$g$a;-><init>(LO5/e$g;)V

    iput-object p1, p0, LX7/i;->j:LX7/c;

    return-void
.end method


# virtual methods
.method public w()I
    .locals 1

    const v0, 0x7f05003c

    return v0
.end method

.method public y()I
    .locals 1

    const v0, 0x7f05003c

    return v0
.end method
