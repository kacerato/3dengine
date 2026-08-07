.class public final enum LNd/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNd/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LNd/b$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LNd/b$b;

.field public static final enum BOTTOM_TO_END:LNd/b$b;

.field public static final enum LEFT_TO_RIGHT:LNd/b$b;

.field public static final enum RIGHT_TO_LEFT:LNd/b$b;

.field public static final enum TOP_TO_BOTTOM:LNd/b$b;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LNd/b$b;

    const-string v1, "LEFT_TO_RIGHT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, LNd/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, LNd/b$b;->LEFT_TO_RIGHT:LNd/b$b;

    new-instance v1, LNd/b$b;

    const-string v2, "RIGHT_TO_LEFT"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, LNd/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, LNd/b$b;->RIGHT_TO_LEFT:LNd/b$b;

    new-instance v2, LNd/b$b;

    const-string v3, "TOP_TO_BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, LNd/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v2, LNd/b$b;->TOP_TO_BOTTOM:LNd/b$b;

    new-instance v3, LNd/b$b;

    const-string v4, "BOTTOM_TO_END"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, LNd/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, LNd/b$b;->BOTTOM_TO_END:LNd/b$b;

    filled-new-array {v0, v1, v2, v3}, [LNd/b$b;

    move-result-object v0

    sput-object v0, LNd/b$b;->$VALUES:[LNd/b$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LNd/b$b;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LNd/b$b;
    .locals 1

    const-class v0, LNd/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LNd/b$b;

    return-object p0
.end method

.method public static values()[LNd/b$b;
    .locals 1

    sget-object v0, LNd/b$b;->$VALUES:[LNd/b$b;

    invoke-virtual {v0}, [LNd/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LNd/b$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LNd/b$b;->value:I

    return v0
.end method
