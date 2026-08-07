.class public final synthetic LHf/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/l;


# instance fields
.field public final synthetic b:LHf/f;


# direct methods
.method public synthetic constructor <init>(LHf/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHf/e;->b:LHf/f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LHf/e;->b:LHf/f;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, LHf/f;->a(LHf/f;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
