.class public final synthetic Lbd/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lbd/z;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lbd/G;

.field public final synthetic e:[I


# direct methods
.method public synthetic constructor <init>(Lbd/z;Ljava/lang/Object;Lbd/G;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd/x;->b:Lbd/z;

    iput-object p2, p0, Lbd/x;->c:Ljava/lang/Object;

    iput-object p3, p0, Lbd/x;->d:Lbd/G;

    iput-object p4, p0, Lbd/x;->e:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lbd/x;->b:Lbd/z;

    iget-object v1, p0, Lbd/x;->c:Ljava/lang/Object;

    iget-object v2, p0, Lbd/x;->d:Lbd/G;

    iget-object v3, p0, Lbd/x;->e:[I

    invoke-static {v0, v1, v2, v3, p1}, Lbd/z;->b(Lbd/z;Ljava/lang/Object;Lbd/G;[ILjava/lang/Object;)V

    return-void
.end method
