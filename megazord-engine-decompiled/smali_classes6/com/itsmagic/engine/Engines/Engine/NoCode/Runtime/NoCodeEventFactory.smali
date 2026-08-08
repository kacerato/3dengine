.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventFactory;
.super Ljava/lang/Object;
.source "NoCodeEventFactory.java"

# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public static create(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;
    .locals 7

    const-wide/16 v5, 0x0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->current(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->getExecutionId()J

    move-result-wide v5

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Ljava/lang/Object;J)V

    return-object v0
.end method
