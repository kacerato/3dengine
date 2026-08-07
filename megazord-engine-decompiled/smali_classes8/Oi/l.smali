.class public final synthetic LOi/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:LOi/r;


# direct methods
.method public synthetic constructor <init>(LOi/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOi/l;->b:LOi/r;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LOi/l;->b:LOi/r;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, LOi/r;->c(LOi/r;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
