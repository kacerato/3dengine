.class public final enum LQ3/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQ3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LQ3/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LQ3/c$a;

.field public static final enum FAST_ENUMERATION:LQ3/c$a;

.field public static final enum JAVA_ITERATOR:LQ3/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LQ3/c$a;

    const-string v1, "JAVA_ITERATOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LQ3/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ3/c$a;->JAVA_ITERATOR:LQ3/c$a;

    new-instance v1, LQ3/c$a;

    const-string v2, "FAST_ENUMERATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LQ3/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, LQ3/c$a;->FAST_ENUMERATION:LQ3/c$a;

    filled-new-array {v0, v1}, [LQ3/c$a;

    move-result-object v0

    sput-object v0, LQ3/c$a;->$VALUES:[LQ3/c$a;

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

.method public static valueOf(Ljava/lang/String;)LQ3/c$a;
    .locals 1

    const-class v0, LQ3/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQ3/c$a;

    return-object p0
.end method

.method public static values()[LQ3/c$a;
    .locals 1

    sget-object v0, LQ3/c$a;->$VALUES:[LQ3/c$a;

    invoke-virtual {v0}, [LQ3/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQ3/c$a;

    return-object v0
.end method
