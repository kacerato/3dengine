.class public final synthetic LLi/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LLi/b;

.field public final synthetic c:[[Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/nio/ByteOrder;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(LLi/b;[[Ljava/util/List;IILjava/nio/ByteOrder;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLi/a;->b:LLi/b;

    iput-object p2, p0, LLi/a;->c:[[Ljava/util/List;

    iput p3, p0, LLi/a;->d:I

    iput p4, p0, LLi/a;->e:I

    iput-object p5, p0, LLi/a;->f:Ljava/nio/ByteOrder;

    iput-boolean p6, p0, LLi/a;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, LLi/a;->b:LLi/b;

    iget-object v1, p0, LLi/a;->c:[[Ljava/util/List;

    iget v2, p0, LLi/a;->d:I

    iget v3, p0, LLi/a;->e:I

    iget-object v4, p0, LLi/a;->f:Ljava/nio/ByteOrder;

    iget-boolean v5, p0, LLi/a;->g:Z

    invoke-static/range {v0 .. v5}, LLi/b;->a(LLi/b;[[Ljava/util/List;IILjava/nio/ByteOrder;Z)V

    return-void
.end method
