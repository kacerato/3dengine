.class public final LFf/P0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LFf/P0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LFf/P0;

    invoke-direct {v0}, LFf/P0;-><init>()V

    sput-object v0, LFf/P0;->a:LFf/P0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "kotlin.Unit"

    return-object v0
.end method
