.class public Ld5/d$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5/d$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld5/d;
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

    iput-object p1, p0, Ld5/d$j;->a:Ld5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget-object v0, p0, Ld5/d$j;->a:Ld5/d;

    invoke-virtual {v0, p1}, Ld5/d;->J1(Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget-object v0, p0, Ld5/d$j;->a:Ld5/d;

    invoke-virtual {v0, p1}, Ld5/d;->z1(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ts"
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

    iget-object v0, p0, Ld5/d$j;->a:Ld5/d;

    invoke-virtual {v0, p1}, Ld5/d;->A1(Ljava/util/List;)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Ld5/d$j;->a:Ld5/d;

    invoke-static {v0}, Ld5/d;->p1(Ld5/d;)Z

    move-result v0

    return v0
.end method

.method public varargs d([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ts"
        }
    .end annotation

    iget-object v0, p0, Ld5/d$j;->a:Ld5/d;

    invoke-virtual {v0, p1}, Ld5/d;->B1([Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Ld5/d$j;->a:Ld5/d;

    invoke-virtual {v0}, Ld5/d;->i()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Ld5/d$j;->a:Ld5/d;

    invoke-virtual {v0}, Ld5/d;->o2()V

    return-void
.end method
