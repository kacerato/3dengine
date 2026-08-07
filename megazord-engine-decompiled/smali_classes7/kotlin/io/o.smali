.class public final synthetic Lkotlin/io/o;
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

    iput-object p1, p0, Lkotlin/io/o;->b:Leg/p;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/io/o;->b:Leg/p;

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/IOException;

    invoke-static {v0, p1, p2}, Lkotlin/io/q;->T(Leg/p;Ljava/io/File;Ljava/io/IOException;)LFf/P0;

    move-result-object p1

    return-object p1
.end method
