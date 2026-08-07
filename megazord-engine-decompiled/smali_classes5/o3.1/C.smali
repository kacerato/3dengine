.class public final synthetic Lo3/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA3/a$a;


# instance fields
.field public final synthetic a:LA3/a$a;

.field public final synthetic b:LA3/a$a;


# direct methods
.method public synthetic constructor <init>(LA3/a$a;LA3/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/C;->a:LA3/a$a;

    iput-object p2, p0, Lo3/C;->b:LA3/a$a;

    return-void
.end method


# virtual methods
.method public final a(LA3/b;)V
    .locals 2

    iget-object v0, p0, Lo3/C;->a:LA3/a$a;

    iget-object v1, p0, Lo3/C;->b:LA3/a$a;

    invoke-static {v0, v1, p1}, Lo3/D;->c(LA3/a$a;LA3/a$a;LA3/b;)V

    return-void
.end method
