.class public final synthetic Lpg/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/p;


# instance fields
.field public final synthetic b:Leg/p;


# direct methods
.method public synthetic constructor <init>(Leg/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpg/I;->b:Leg/p;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpg/I;->b:Leg/p;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1, p2}, Lpg/K;->a0(Leg/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
