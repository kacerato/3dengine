.class public final enum LLd/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LLd/a;",
        ">;",
        "Ljava/util/concurrent/ThreadFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LLd/a;

.field public static final enum INSTANCE:LLd/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LLd/a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LLd/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLd/a;->INSTANCE:LLd/a;

    filled-new-array {v0}, [LLd/a;

    move-result-object v0

    sput-object v0, LLd/a;->$VALUES:[LLd/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LLd/a;
    .locals 1

    const-class v0, LLd/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LLd/a;

    return-object p0
.end method

.method public static values()[LLd/a;
    .locals 1

    sget-object v0, LLd/a;->$VALUES:[LLd/a;

    invoke-virtual {v0}, [LLd/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLd/a;

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
