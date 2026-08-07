.class public final synthetic Lid/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lid/n;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lid/p;


# direct methods
.method public synthetic constructor <init>(Lid/n;IILjava/util/List;Lid/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/a;->b:Lid/n;

    iput p2, p0, Lid/a;->c:I

    iput p3, p0, Lid/a;->d:I

    iput-object p4, p0, Lid/a;->e:Ljava/util/List;

    iput-object p5, p0, Lid/a;->f:Lid/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lid/a;->b:Lid/n;

    iget v1, p0, Lid/a;->c:I

    iget v2, p0, Lid/a;->d:I

    iget-object v3, p0, Lid/a;->e:Ljava/util/List;

    iget-object v4, p0, Lid/a;->f:Lid/p;

    invoke-static {v0, v1, v2, v3, v4}, Lid/n;->c(Lid/n;IILjava/util/List;Lid/p;)V

    return-void
.end method
