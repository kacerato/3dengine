.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRuntime;
.super Ljava/lang/Object;
.source "NoCodeTraceRuntime.java"

# static fields
.field private static provider:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceProvider;

# direct methods
.method private constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static declared-synchronized clearProvider()V
    .locals 2
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRuntime;
    monitor-enter v0
    const/4 v1, 0x0
    :try_start_0
    sput-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRuntime;->provider:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    monitor-exit v0
    return-void
    :catchall_0
    move-exception v1
    monitor-exit v0
    throw v1
.end method

.method public static declared-synchronized installProvider(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceProvider;)V
    .locals 1
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRuntime;
    monitor-enter v0
    :try_start_0
    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRuntime;->provider:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    monitor-exit v0
    return-void
    :catchall_0
    move-exception p0
    monitor-exit v0
    throw p0
.end method

.method public static trace(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRequest;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;
    .locals 2

    if-eqz p0, :miss
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRequest;->isValid()Z
    move-result v0
    if-eqz v0, :miss

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRuntime;
    monitor-enter v0
    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRuntime;->provider:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceProvider;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :miss
    invoke-interface {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceProvider;->trace(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRequest;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;
    move-result-object v1
    if-eqz v1, :miss
    return-object v1

    :catchall_0
    move-exception v1
    monitor-exit v0
    throw v1

    :miss
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;->miss()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;
    move-result-object v0
    return-object v0
.end method
