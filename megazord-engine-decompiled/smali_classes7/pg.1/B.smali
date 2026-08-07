.class public final synthetic Lpg/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/l;


# instance fields
.field public final synthetic b:Lpg/m;


# direct methods
.method public synthetic constructor <init>(Lpg/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpg/B;->b:Lpg/m;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpg/B;->b:Lpg/m;

    invoke-static {v0, p1}, Lpg/K;->Y(Lpg/m;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
