.class public Ld5/d$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le5/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld5/d;->s2(Le5/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld5/d;


# direct methods
.method public constructor <init>(Ld5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ld5/d$l;->a:Ld5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ld5/d$l;->a:Ld5/d;

    invoke-static {v0, p1}, Ld5/d;->u1(Ld5/d;Ljava/util/List;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    iget-object v0, p0, Ld5/d$l;->a:Ld5/d;

    invoke-static {v0, p1}, Ld5/d;->q1(Ld5/d;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Ld5/d$l;->a:Ld5/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld5/d;->t1(Ld5/d;Le5/a;)V

    return-void
.end method
