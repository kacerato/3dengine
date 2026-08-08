.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;
.super Ljava/lang/Object;
.source "NoCodeExecutionRuntime.java"

# static fields
.field private static final sessions:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;",
            ">;"
        }
    .end annotation
.end field

# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->sessions:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static stackFor(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->sessions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->sessions:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

# virtual methods
.method public static synchronized begin(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;

    invoke-direct {v0, p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->setTargetObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->stackFor(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;->push(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;)V

    return-object v0
.end method

.method public static synchronized beginEvent(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->begin(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->setEvent(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->setSenderObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    return-object v0
.end method

.method public static synchronized beginEnvelope(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->begin(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->setEventEnvelope(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;)V

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->getPayload()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->setEvent(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->getSender()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->setSenderRef(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;)V

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->getReceiver()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->setTargetRef(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;)V

    :cond_0
    return-object v0
.end method

.method public static synchronized clear(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->sessions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;->clear()V

    :cond_0
    return-void
.end method

.method public static synchronized current(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->stackFor(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;->current()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static synchronized depth(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->stackFor(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public static synchronized end(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;)Z
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->stackFor(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;->current()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;

    move-result-object v0

    if-ne v0, p1, :cond_3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;->pop()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionStack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->sessions:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
