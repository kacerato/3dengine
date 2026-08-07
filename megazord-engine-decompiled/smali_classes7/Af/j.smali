.class public final enum LAf/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LAf/j;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LAf/j;

.field public static final enum Facet:LAf/j;

.field public static final enum None:LAf/j;

.field public static final enum Smooth:LAf/j;

.field public static final enum Sphere:LAf/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LAf/j;

    const-string v1, "Facet"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LAf/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAf/j;->Facet:LAf/j;

    new-instance v0, LAf/j;

    const-string v1, "None"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LAf/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAf/j;->None:LAf/j;

    new-instance v0, LAf/j;

    const-string v1, "Smooth"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LAf/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAf/j;->Smooth:LAf/j;

    new-instance v0, LAf/j;

    const-string v1, "Sphere"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LAf/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAf/j;->Sphere:LAf/j;

    invoke-static {}, LAf/j;->a()[LAf/j;

    move-result-object v0

    sput-object v0, LAf/j;->$VALUES:[LAf/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[LAf/j;
    .locals 4

    sget-object v0, LAf/j;->Facet:LAf/j;

    sget-object v1, LAf/j;->None:LAf/j;

    sget-object v2, LAf/j;->Smooth:LAf/j;

    sget-object v3, LAf/j;->Sphere:LAf/j;

    filled-new-array {v0, v1, v2, v3}, [LAf/j;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LAf/j;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, LAf/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LAf/j;

    return-object p0
.end method

.method public static values()[LAf/j;
    .locals 1

    sget-object v0, LAf/j;->$VALUES:[LAf/j;

    invoke-virtual {v0}, [LAf/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAf/j;

    return-object v0
.end method
