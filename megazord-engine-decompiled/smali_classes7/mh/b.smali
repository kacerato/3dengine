.class public final synthetic Lmh/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/a;

.field public final synthetic c:LTb/d;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lorg/ITsMagic/Atlas/a$b;


# direct methods
.method public synthetic constructor <init>(Lorg/ITsMagic/Atlas/a;LTb/d;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmh/b;->b:Lorg/ITsMagic/Atlas/a;

    iput-object p2, p0, Lmh/b;->c:LTb/d;

    iput-object p3, p0, Lmh/b;->d:Ljava/util/List;

    iput-object p4, p0, Lmh/b;->e:Ljava/util/List;

    iput-object p5, p0, Lmh/b;->f:Lorg/ITsMagic/Atlas/a$b;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lmh/b;->b:Lorg/ITsMagic/Atlas/a;

    iget-object v1, p0, Lmh/b;->c:LTb/d;

    iget-object v2, p0, Lmh/b;->d:Ljava/util/List;

    iget-object v3, p0, Lmh/b;->e:Ljava/util/List;

    iget-object v4, p0, Lmh/b;->f:Lorg/ITsMagic/Atlas/a$b;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/ITsMagic/Atlas/a;->b(Lorg/ITsMagic/Atlas/a;LTb/d;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
