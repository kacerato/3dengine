.class public final enum Lqh/j$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqh/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqh/j$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LUf/a;

.field private static final synthetic $VALUES:[Lqh/j$a;

.field public static final enum BOTTOM_CENTER:Lqh/j$a;

.field public static final enum BOTTOM_LEFT:Lqh/j$a;

.field public static final enum BOTTOM_RIGHT:Lqh/j$a;

.field public static final enum CENTER:Lqh/j$a;

.field public static final enum LEFT:Lqh/j$a;

.field public static final enum RIGHT:Lqh/j$a;

.field public static final enum TOP_CENTER:Lqh/j$a;

.field public static final enum TOP_LEFT:Lqh/j$a;

.field public static final enum TOP_RIGHT:Lqh/j$a;


# instance fields
.field private final height:F

.field private final paddingH:I

.field private final paddingV:I

.field private final width:F

.field private final x:F

.field private final y:F


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v9, Lqh/j$a;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lqh/j$a;-><init>(Ljava/lang/String;IFFFFII)V

    sput-object v9, Lqh/j$a;->TOP_LEFT:Lqh/j$a;

    new-instance v0, Lqh/j$a;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v11, "TOP_CENTER"

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lqh/j$a;-><init>(Ljava/lang/String;IFFFFII)V

    sput-object v0, Lqh/j$a;->TOP_CENTER:Lqh/j$a;

    new-instance v0, Lqh/j$a;

    const/4 v8, -0x1

    const/4 v9, 0x1

    const-string v2, "TOP_RIGHT"

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lqh/j$a;-><init>(Ljava/lang/String;IFFFFII)V

    sput-object v0, Lqh/j$a;->TOP_RIGHT:Lqh/j$a;

    new-instance v0, Lqh/j$a;

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v11, "LEFT"

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x0

    const/high16 v16, 0x3f000000    # 0.5f

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lqh/j$a;-><init>(Ljava/lang/String;IFFFFII)V

    sput-object v0, Lqh/j$a;->LEFT:Lqh/j$a;

    new-instance v0, Lqh/j$a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "CENTER"

    const/4 v3, 0x4

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lqh/j$a;-><init>(Ljava/lang/String;IFFFFII)V

    sput-object v0, Lqh/j$a;->CENTER:Lqh/j$a;

    new-instance v0, Lqh/j$a;

    const/16 v17, -0x1

    const-string v11, "RIGHT"

    const/4 v12, 0x5

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lqh/j$a;-><init>(Ljava/lang/String;IFFFFII)V

    sput-object v0, Lqh/j$a;->RIGHT:Lqh/j$a;

    new-instance v0, Lqh/j$a;

    const/4 v8, 0x1

    const/4 v9, -0x1

    const-string v2, "BOTTOM_LEFT"

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lqh/j$a;-><init>(Ljava/lang/String;IFFFFII)V

    sput-object v0, Lqh/j$a;->BOTTOM_LEFT:Lqh/j$a;

    new-instance v0, Lqh/j$a;

    const/16 v17, 0x0

    const/16 v18, -0x1

    const-string v11, "BOTTOM_CENTER"

    const/4 v12, 0x7

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f000000    # 0.5f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lqh/j$a;-><init>(Ljava/lang/String;IFFFFII)V

    sput-object v0, Lqh/j$a;->BOTTOM_CENTER:Lqh/j$a;

    new-instance v0, Lqh/j$a;

    const/4 v8, -0x1

    const-string v2, "BOTTOM_RIGHT"

    const/16 v3, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lqh/j$a;-><init>(Ljava/lang/String;IFFFFII)V

    sput-object v0, Lqh/j$a;->BOTTOM_RIGHT:Lqh/j$a;

    invoke-static {}, Lqh/j$a;->a()[Lqh/j$a;

    move-result-object v0

    sput-object v0, Lqh/j$a;->$VALUES:[Lqh/j$a;

    invoke-static {v0}, LUf/c;->c([Ljava/lang/Enum;)LUf/a;

    move-result-object v0

    sput-object v0, Lqh/j$a;->$ENTRIES:LUf/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFFFFII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lqh/j$a;->x:F

    iput p4, p0, Lqh/j$a;->y:F

    iput p5, p0, Lqh/j$a;->width:F

    iput p6, p0, Lqh/j$a;->height:F

    iput p7, p0, Lqh/j$a;->paddingH:I

    iput p8, p0, Lqh/j$a;->paddingV:I

    return-void
.end method

.method public static final synthetic a()[Lqh/j$a;
    .locals 9

    sget-object v0, Lqh/j$a;->TOP_LEFT:Lqh/j$a;

    sget-object v1, Lqh/j$a;->TOP_CENTER:Lqh/j$a;

    sget-object v2, Lqh/j$a;->TOP_RIGHT:Lqh/j$a;

    sget-object v3, Lqh/j$a;->LEFT:Lqh/j$a;

    sget-object v4, Lqh/j$a;->CENTER:Lqh/j$a;

    sget-object v5, Lqh/j$a;->RIGHT:Lqh/j$a;

    sget-object v6, Lqh/j$a;->BOTTOM_LEFT:Lqh/j$a;

    sget-object v7, Lqh/j$a;->BOTTOM_CENTER:Lqh/j$a;

    sget-object v8, Lqh/j$a;->BOTTOM_RIGHT:Lqh/j$a;

    filled-new-array/range {v0 .. v8}, [Lqh/j$a;

    move-result-object v0

    return-object v0
.end method

.method public static b()LUf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LUf/a<",
            "Lqh/j$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lqh/j$a;->$ENTRIES:LUf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lqh/j$a;
    .locals 1

    const-class v0, Lqh/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqh/j$a;

    return-object p0
.end method

.method public static values()[Lqh/j$a;
    .locals 1

    sget-object v0, Lqh/j$a;->$VALUES:[Lqh/j$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqh/j$a;

    return-object v0
.end method


# virtual methods
.method public final c()F
    .locals 1

    iget v0, p0, Lqh/j$a;->height:F

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lqh/j$a;->paddingH:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lqh/j$a;->paddingV:I

    return v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Lqh/j$a;->width:F

    return v0
.end method

.method public final h()F
    .locals 1

    iget v0, p0, Lqh/j$a;->x:F

    return v0
.end method

.method public final i()F
    .locals 1

    iget v0, p0, Lqh/j$a;->y:F

    return v0
.end method
