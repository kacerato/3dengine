.class public final enum LU3/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LU3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LU3/c$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LU3/c$b;

.field public static final enum Custom:LU3/c$b;

.field public static final enum Disable:LU3/c$b;

.field public static final enum HPOPAdd:LU3/c$b;

.field public static final enum HPOPRemove:LU3/c$b;

.field public static final enum Position:LU3/c$b;

.field public static final enum Rotation:LU3/c$b;

.field public static final enum SPosition:LU3/c$b;

.field public static final enum SScale:LU3/c$b;

.field public static final enum Scale:LU3/c$b;

.field public static final enum TerrainDown:LU3/c$b;

.field public static final enum TerrainUpper:LU3/c$b;

.field public static final enum UIAnchor:LU3/c$b;

.field public static final enum UIScale:LU3/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LU3/c$b;

    const-string v1, "Disable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU3/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU3/c$b;->Disable:LU3/c$b;

    new-instance v0, LU3/c$b;

    const-string v1, "Position"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LU3/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU3/c$b;->Position:LU3/c$b;

    new-instance v0, LU3/c$b;

    const-string v1, "Rotation"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LU3/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU3/c$b;->Rotation:LU3/c$b;

    new-instance v0, LU3/c$b;

    const-string v1, "Scale"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LU3/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU3/c$b;->Scale:LU3/c$b;

    new-instance v0, LU3/c$b;

    const-string v1, "SPosition"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LU3/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU3/c$b;->SPosition:LU3/c$b;

    new-instance v0, LU3/c$b;

    const-string v1, "SScale"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LU3/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU3/c$b;->SScale:LU3/c$b;

    new-instance v0, LU3/c$b;

    const-string v1, "UIScale"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LU3/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU3/c$b;->UIScale:LU3/c$b;

    new-instance v0, LU3/c$b;

    const-string v1, "UIAnchor"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LU3/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU3/c$b;->UIAnchor:LU3/c$b;

    new-instance v0, LU3/c$b;

    const-string v1, "HPOPAdd"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LU3/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU3/c$b;->HPOPAdd:LU3/c$b;

    new-instance v0, LU3/c$b;

    const-string v1, "HPOPRemove"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LU3/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU3/c$b;->HPOPRemove:LU3/c$b;

    new-instance v0, LU3/c$b;

    const-string v1, "TerrainUpper"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LU3/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU3/c$b;->TerrainUpper:LU3/c$b;

    new-instance v0, LU3/c$b;

    const-string v1, "TerrainDown"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, LU3/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU3/c$b;->TerrainDown:LU3/c$b;

    new-instance v0, LU3/c$b;

    const-string v1, "Custom"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, LU3/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU3/c$b;->Custom:LU3/c$b;

    invoke-static {}, LU3/c$b;->a()[LU3/c$b;

    move-result-object v0

    sput-object v0, LU3/c$b;->$VALUES:[LU3/c$b;

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
            "$enum$name",
            "$enum$ordinal"
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

.method public static synthetic a()[LU3/c$b;
    .locals 13

    sget-object v0, LU3/c$b;->Disable:LU3/c$b;

    sget-object v1, LU3/c$b;->Position:LU3/c$b;

    sget-object v2, LU3/c$b;->Rotation:LU3/c$b;

    sget-object v3, LU3/c$b;->Scale:LU3/c$b;

    sget-object v4, LU3/c$b;->SPosition:LU3/c$b;

    sget-object v5, LU3/c$b;->SScale:LU3/c$b;

    sget-object v6, LU3/c$b;->UIScale:LU3/c$b;

    sget-object v7, LU3/c$b;->UIAnchor:LU3/c$b;

    sget-object v8, LU3/c$b;->HPOPAdd:LU3/c$b;

    sget-object v9, LU3/c$b;->HPOPRemove:LU3/c$b;

    sget-object v10, LU3/c$b;->TerrainUpper:LU3/c$b;

    sget-object v11, LU3/c$b;->TerrainDown:LU3/c$b;

    sget-object v12, LU3/c$b;->Custom:LU3/c$b;

    filled-new-array/range {v0 .. v12}, [LU3/c$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LU3/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LU3/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LU3/c$b;

    return-object p0
.end method

.method public static values()[LU3/c$b;
    .locals 1

    sget-object v0, LU3/c$b;->$VALUES:[LU3/c$b;

    invoke-virtual {v0}, [LU3/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LU3/c$b;

    return-object v0
.end method
