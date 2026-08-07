.class public final Lpg/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg/m;
.implements Lpg/e;


# static fields
.field public static final a:Lpg/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpg/g;

    invoke-direct {v0}, Lpg/g;-><init>()V

    sput-object v0, Lpg/g;->a:Lpg/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lpg/m;
    .locals 0

    invoke-virtual {p0, p1}, Lpg/g;->c(I)Lpg/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(I)Lpg/m;
    .locals 0

    invoke-virtual {p0, p1}, Lpg/g;->d(I)Lpg/g;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lpg/g;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p1, Lpg/g;->a:Lpg/g;

    return-object p1
.end method

.method public d(I)Lpg/g;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p1, Lpg/g;->a:Lpg/g;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LHf/U;->b:LHf/U;

    return-object v0
.end method
