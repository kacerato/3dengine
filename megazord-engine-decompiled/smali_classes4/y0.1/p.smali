.class public final synthetic Ly0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/a$a;


# instance fields
.field public final synthetic a:Ly0/s;

.field public final synthetic b:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Ly0/s;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/p;->a:Ly0/s;

    iput-object p2, p0, Ly0/p;->b:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ly0/p;->a:Ly0/s;

    iget-object v1, p0, Ly0/p;->b:Ljava/lang/Iterable;

    invoke-static {v0, v1}, Ly0/s;->e(Ly0/s;Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
