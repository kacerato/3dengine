.class public Lsg/E;
.super Lsg/D;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsg/D;-><init>()V

    return-void
.end method

.method public static final y(Ljava/util/regex/Pattern;)Lsg/v;
    .locals 1
    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lsg/v;

    invoke-direct {v0, p0}, Lsg/v;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method
