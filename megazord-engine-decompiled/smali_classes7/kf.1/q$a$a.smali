.class public final Lkf/q$a$a;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf/q$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lkf/q$f;

.field public final synthetic c:Lkf/q$a;


# direct methods
.method public constructor <init>(Lkf/q$a;Lkf/q$f;)V
    .locals 0

    iput-object p1, p0, Lkf/q$a$a;->c:Lkf/q$a;

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p2, p0, Lkf/q$a$a;->b:Lkf/q$f;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 2

    iget-object v0, p0, Lkf/q$a$a;->b:Lkf/q$f;

    invoke-interface {p1, v0}, LTe/f;->e(LVe/c;)V

    iget-object v0, p0, Lkf/q$a$a;->b:Lkf/q$f;

    iget-object v1, p0, Lkf/q$a$a;->c:Lkf/q$a;

    iget-object v1, v1, Lkf/q$a;->b:LTe/J$c;

    invoke-virtual {v0, v1, p1}, Lkf/q$f;->a(LTe/J$c;LTe/f;)V

    return-void
.end method
