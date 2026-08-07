.class public final enum Log/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build LFf/l0;
    version = "1.1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Log/v;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[Log/v;

.field public static final enum INTERNAL:Log/v;

.field public static final enum PRIVATE:Log/v;

.field public static final enum PROTECTED:Log/v;

.field public static final enum PUBLIC:Log/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Log/v;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Log/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Log/v;->PUBLIC:Log/v;

    new-instance v0, Log/v;

    const-string v1, "PROTECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Log/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Log/v;->PROTECTED:Log/v;

    new-instance v0, Log/v;

    const-string v1, "INTERNAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Log/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Log/v;->INTERNAL:Log/v;

    new-instance v0, Log/v;

    const-string v1, "PRIVATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Log/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Log/v;->PRIVATE:Log/v;

    invoke-static {}, Log/v;->a()[Log/v;

    move-result-object v0

    sput-object v0, Log/v;->$VALUES:[Log/v;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, Log/v;->$ENTRIES:LUf/a;

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

.method public static final synthetic a()[Log/v;
    .locals 4

    sget-object v0, Log/v;->PUBLIC:Log/v;

    sget-object v1, Log/v;->PROTECTED:Log/v;

    sget-object v2, Log/v;->INTERNAL:Log/v;

    sget-object v3, Log/v;->PRIVATE:Log/v;

    filled-new-array {v0, v1, v2, v3}, [Log/v;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "Log/v;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Log/v;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Log/v;
    .locals 1

    const-class v0, Log/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Log/v;

    return-object p0
.end method

.method public static values()[Log/v;
    .locals 1

    sget-object v0, Log/v;->$VALUES:[Log/v;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Log/v;

    return-object v0
.end method
