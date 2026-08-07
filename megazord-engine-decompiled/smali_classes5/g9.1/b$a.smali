.class public Lg9/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg9/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lg9/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lg9/b;


# direct methods
.method public constructor <init>(Lg9/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lg9/b$a;->b:Lg9/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg9/a;Lg9/a;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "object1",
            "object2"
        }
    .end annotation

    invoke-virtual {p1}, Lg9/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lg9/a;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "object1",
            "object2"
        }
    .end annotation

    check-cast p1, Lg9/a;

    check-cast p2, Lg9/a;

    invoke-virtual {p0, p1, p2}, Lg9/b$a;->a(Lg9/a;Lg9/a;)I

    move-result p1

    return p1
.end method
