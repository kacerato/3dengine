.class public final enum LZe/a$B;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZe/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "B"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LZe/a$B;",
        ">;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LZe/a$B;

.field public static final enum INSTANCE:LZe/a$B;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LZe/a$B;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LZe/a$B;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZe/a$B;->INSTANCE:LZe/a$B;

    filled-new-array {v0}, [LZe/a$B;

    move-result-object v0

    sput-object v0, LZe/a$B;->$VALUES:[LZe/a$B;

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

.method public static valueOf(Ljava/lang/String;)LZe/a$B;
    .locals 1

    const-class v0, LZe/a$B;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LZe/a$B;

    return-object p0
.end method

.method public static values()[LZe/a$B;
    .locals 1

    sget-object v0, LZe/a$B;->$VALUES:[LZe/a$B;

    invoke-virtual {v0}, [LZe/a$B;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZe/a$B;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
