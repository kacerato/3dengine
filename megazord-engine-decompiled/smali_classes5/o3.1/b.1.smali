.class public final synthetic Lo3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo3/k;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lo3/h;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo3/b;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lo3/g;->c(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
