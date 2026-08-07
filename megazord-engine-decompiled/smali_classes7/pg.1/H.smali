.class public final synthetic Lpg/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/l;


# instance fields
.field public final synthetic b:Leg/l;


# direct methods
.method public synthetic constructor <init>(Leg/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpg/H;->b:Leg/l;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpg/H;->b:Leg/l;

    invoke-static {v0, p1}, Lpg/K;->d0(Leg/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
