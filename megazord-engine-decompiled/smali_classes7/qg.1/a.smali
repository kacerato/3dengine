.class public final synthetic Lqg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lpg/m;


# direct methods
.method public synthetic constructor <init>(Lpg/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqg/a;->b:Lpg/m;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqg/a;->b:Lpg/m;

    invoke-static {v0}, Lqg/b;->a(Lpg/m;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
