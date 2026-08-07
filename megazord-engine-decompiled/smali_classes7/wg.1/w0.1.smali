.class public abstract Lwg/w0;
.super Lwg/M;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwg/w0$a;
    }
.end annotation


# static fields
.field public static final b:Lwg/w0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwg/w0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwg/w0$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lwg/w0;->b:Lwg/w0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lwg/M;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract v()Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
