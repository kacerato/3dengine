.class public final enum Lz1/S;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz1/S;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lz1/S;

.field public static final enum zzb:Lz1/S;

.field public static final enum zzc:Lz1/S;

.field public static final enum zzd:Lz1/S;

.field public static final enum zze:Lz1/S;

.field private static final synthetic zzf:[Lz1/S;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lz1/S;

    const-string v1, "DEBUG_PARAM_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz1/S;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz1/S;->zza:Lz1/S;

    new-instance v1, Lz1/S;

    const-string v2, "ALWAYS_SHOW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lz1/S;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz1/S;->zzb:Lz1/S;

    new-instance v2, Lz1/S;

    const-string v3, "GEO_OVERRIDE_EEA"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lz1/S;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lz1/S;->zzc:Lz1/S;

    new-instance v3, Lz1/S;

    const-string v4, "GEO_OVERRIDE_NON_EEA"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lz1/S;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz1/S;->zzd:Lz1/S;

    new-instance v4, Lz1/S;

    const-string v5, "PREVIEWING_DEBUG_MESSAGES"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lz1/S;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lz1/S;->zze:Lz1/S;

    filled-new-array {v0, v1, v2, v3, v4}, [Lz1/S;

    move-result-object v0

    sput-object v0, Lz1/S;->zzf:[Lz1/S;

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

.method public static values()[Lz1/S;
    .locals 1

    sget-object v0, Lz1/S;->zzf:[Lz1/S;

    invoke-virtual {v0}, [Lz1/S;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz1/S;

    return-object v0
.end method
