.class public final enum LR2/S$f;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LR2/S$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR2/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LR2/S$f;",
        ">;",
        "LR2/S$e<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LR2/S$f;

.field public static final enum INSTANCE:LR2/S$f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LR2/S$f;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LR2/S$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LR2/S$f;->INSTANCE:LR2/S$f;

    invoke-static {}, LR2/S$f;->a()[LR2/S$f;

    move-result-object v0

    sput-object v0, LR2/S$f;->$VALUES:[LR2/S$f;

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

.method public static synthetic a()[LR2/S$f;
    .locals 1

    sget-object v0, LR2/S$f;->INSTANCE:LR2/S$f;

    filled-new-array {v0}, [LR2/S$f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LR2/S$f;
    .locals 1

    const-class v0, LR2/S$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LR2/S$f;

    return-object p0
.end method

.method public static values()[LR2/S$f;
    .locals 1

    sget-object v0, LR2/S$f;->$VALUES:[LR2/S$f;

    invoke-virtual {v0}, [LR2/S$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LR2/S$f;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    check-cast p1, LR2/Q;

    invoke-virtual {p0, p1}, LR2/S$f;->b(LR2/Q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(LR2/Q;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR2/Q<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-interface {p1}, LR2/Q;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Suppliers.supplierFunction()"

    return-object v0
.end method
