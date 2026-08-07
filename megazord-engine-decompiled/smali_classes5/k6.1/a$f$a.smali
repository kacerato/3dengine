.class public Lk6/a$f$a;
.super Lr7/c$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk6/a$f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk6/a$f;


# direct methods
.method public constructor <init>(Lk6/a$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lk6/a$f$a;->a:Lk6/a$f;

    invoke-direct {p0}, Lr7/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr7/c$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, Lr7/c$h;->a(Lr7/c$g;)V

    return-void
.end method

.method public b(Lr7/c$g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, Lr7/c$h;->b(Lr7/c$g;)V

    iget-object p1, p0, Lk6/a$f$a;->a:Lk6/a$f;

    iget-object v0, p1, Lk6/a$f;->c:Lk6/a;

    iget-object v1, p1, Lk6/a$f;->a:Ljava/lang/String;

    iget-object p1, p1, Lk6/a$f;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lk6/a;->C(Lk6/a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
