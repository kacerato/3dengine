.class public final Lwg/B0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwg/S;


# annotations
.annotation build Lwg/e0;
.end annotation


# static fields
.field public static final b:Lwg/B0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwg/B0;

    invoke-direct {v0}, Lwg/B0;-><init>()V

    sput-object v0, Lwg/B0;->b:Lwg/B0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoroutineContext()LQf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LQf/l;->b:LQf/l;

    return-object v0
.end method
