.class public final LE0/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LE0/G;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE0/G;

    invoke-direct {v0}, LE0/G;-><init>()V

    sput-object v0, LE0/G;->a:LE0/G;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 1
    .annotation runtime Ldg/o;
    .end annotation

    invoke-static {}, Lcom/google/android/filament/j;->a()V

    const-string v0, "filament-utils-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
