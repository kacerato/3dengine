.class public final synthetic Lpg/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/l;


# instance fields
.field public final synthetic b:Leg/p;


# direct methods
.method public synthetic constructor <init>(Leg/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpg/C;->b:Leg/p;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpg/C;->b:Leg/p;

    check-cast p1, LHf/d0;

    invoke-static {v0, p1}, Lpg/K;->c0(Leg/p;LHf/d0;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
