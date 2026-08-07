.class public final synthetic Lid/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lid/n;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:[Ljava/lang/Object;

.field public final synthetic e:Lid/p;


# direct methods
.method public synthetic constructor <init>(Lid/n;ILjava/util/List;[Ljava/lang/Object;Lid/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/g;->a:Lid/n;

    iput p2, p0, Lid/g;->b:I

    iput-object p3, p0, Lid/g;->c:Ljava/util/List;

    iput-object p4, p0, Lid/g;->d:[Ljava/lang/Object;

    iput-object p5, p0, Lid/g;->e:Lid/p;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 6

    iget-object v0, p0, Lid/g;->a:Lid/n;

    iget v1, p0, Lid/g;->b:I

    iget-object v2, p0, Lid/g;->c:Ljava/util/List;

    iget-object v3, p0, Lid/g;->d:[Ljava/lang/Object;

    iget-object v4, p0, Lid/g;->e:Lid/p;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lid/n;->h(Lid/n;ILjava/util/List;[Ljava/lang/Object;Lid/p;I)V

    return-void
.end method
