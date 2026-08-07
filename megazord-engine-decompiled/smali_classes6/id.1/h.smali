.class public final synthetic Lid/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:[Ljava/lang/Object;

.field public final synthetic f:Lid/p;


# direct methods
.method public synthetic constructor <init>(IILjava/util/List;[Ljava/lang/Object;Lid/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lid/h;->b:I

    iput p2, p0, Lid/h;->c:I

    iput-object p3, p0, Lid/h;->d:Ljava/util/List;

    iput-object p4, p0, Lid/h;->e:[Ljava/lang/Object;

    iput-object p5, p0, Lid/h;->f:Lid/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lid/h;->b:I

    iget v1, p0, Lid/h;->c:I

    iget-object v2, p0, Lid/h;->d:Ljava/util/List;

    iget-object v3, p0, Lid/h;->e:[Ljava/lang/Object;

    iget-object v4, p0, Lid/h;->f:Lid/p;

    invoke-static {v0, v1, v2, v3, v4}, Lid/n;->l(IILjava/util/List;[Ljava/lang/Object;Lid/p;)V

    return-void
.end method
