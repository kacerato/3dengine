.class public final synthetic LT2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/t;


# instance fields
.field public final synthetic b:LT2/h;


# direct methods
.method public synthetic constructor <init>(LT2/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT2/g;->b:LT2/h;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LT2/g;->b:LT2/h;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, LT2/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
