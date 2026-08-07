.class public final synthetic Lo3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA3/b;


# instance fields
.field public final synthetic a:Lo3/s;

.field public final synthetic b:Lo3/g;


# direct methods
.method public synthetic constructor <init>(Lo3/s;Lo3/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/p;->a:Lo3/s;

    iput-object p2, p0, Lo3/p;->b:Lo3/g;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo3/p;->a:Lo3/s;

    iget-object v1, p0, Lo3/p;->b:Lo3/g;

    invoke-static {v0, v1}, Lo3/s;->l(Lo3/s;Lo3/g;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
