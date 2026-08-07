.class public final synthetic Lbd/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lbd/z;

.field public final synthetic c:Lbd/t;

.field public final synthetic d:[I


# direct methods
.method public synthetic constructor <init>(Lbd/z;Lbd/t;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd/y;->b:Lbd/z;

    iput-object p2, p0, Lbd/y;->c:Lbd/t;

    iput-object p3, p0, Lbd/y;->d:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lbd/y;->b:Lbd/z;

    iget-object v1, p0, Lbd/y;->c:Lbd/t;

    iget-object v2, p0, Lbd/y;->d:[I

    invoke-static {v0, v1, v2, p1}, Lbd/z;->a(Lbd/z;Lbd/t;[ILjava/lang/Object;)V

    return-void
.end method
