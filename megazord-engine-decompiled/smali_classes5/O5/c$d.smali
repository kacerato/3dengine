.class public LO5/c$d;
.super LB7/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO5/c;->W1(Ljava/util/List;Lrd/d;Ljava/lang/String;LO5/c$q;LO5/c$r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:LO5/c;


# direct methods
.method public constructor <init>(LO5/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "name",
            "path"
        }
    .end annotation

    iput-object p1, p0, LO5/c$d;->q:LO5/c;

    invoke-direct {p0, p2, p3}, LB7/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, LO5/c$d$a;

    invoke-direct {p1, p0}, LO5/c$d$a;-><init>(LO5/c$d;)V

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
