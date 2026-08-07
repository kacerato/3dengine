.class public final Llg/d;
.super Llg/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llg/d$a;
    }
.end annotation


# static fields
.field public static final e:Llg/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:J


# instance fields
.field public final d:Ljava/util/Random;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llg/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llg/d$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Llg/d;->e:Llg/d$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 1
    .param p1    # Ljava/util/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "impl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Llg/a;-><init>()V

    iput-object p1, p0, Llg/d;->d:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public r()Ljava/util/Random;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Llg/d;->d:Ljava/util/Random;

    return-object v0
.end method
