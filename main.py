from flask import Flask, render_template, request, url_for, redirect
import mysql.connector
con = mysql.connector.connect(user="root" , database="smartcars")

app = Flask(__name__)

@app.route("/")
def supercars():
    cur = con.cursor()
    cur.execute("select * from supercars")
    result = cur.fetchall()
    cur.close()
    return render_template("supercars.html", data=result)

@app.route("/All")
def All():
    cur = con.cursor()
    cur.execute("select * from supercars")
    result = cur.fetchall()
    cur.close()

    cur1 = con.cursor()
    cur1.execute("select * from familycars")
    result1 = cur1.fetchall()
    cur1.close()

    cur2 = con.cursor()
    cur2.execute("select * from rentcar")
    result2 = cur2.fetchall()
    cur2.close()

    cur3 = con.cursor()
    cur3.execute("select * from caraccessories")
    result3 = cur3.fetchall()
    cur3.close()
    return render_template("All.html", data=result, data1=result1 ,data2=result2, data3=result3)

@app.route("/search", methods=["POST", "GET"])
def search():
    if request.method == "POST":
        b=request.form["Car_Name"]
    cur = con.cursor()
    cur.execute("select * from supercars where Car_Name like '"+b+"%'")
    result = cur.fetchall()
    cur.close()

    if request.method == "POST":
        b=request.form["Car_Name"]
    cur1 = con.cursor()
    cur1.execute("select * from familycars where Car_Name like '"+b+"%'")
    result1 = cur1.fetchall()
    cur1.close()

    if request.method == "POST":
        b=request.form["Car_Name"]
    cur2 = con.cursor()
    cur2.execute("select * from rentcar where Car_Name like '"+b+"%'")
    result2 = cur2.fetchall()
    cur2.close()

    if request.method == "POST":
        b=request.form["Car_Name"]
    cur3 = con.cursor()
    cur3.execute("select * from caraccessories where Name like '"+b+"%'")
    result3 = cur3.fetchall()
    cur3.close()

    return render_template("search.html", data=result,data1= result1 ,data2=result2, data3=result3)

@app.route("/order")
def order():
    cur = con.cursor()
    cur.execute("select * from order2")
    result = cur.fetchall()
    cur.close()
    return render_template("order.html", data=result)


@app.route("/detalissc")
def detalissc():
    id = request.args.get("id")
    cur = con.cursor()
    cur.execute("select * from supercars where Car_ID='"+id+"'")
    result = cur.fetchall()
    cur.close()
    return render_template("detalissc.html", data=result)

@app.route("/familysdetalis", methods=["POST", "GET"])
def familysdetalis():
    id = request.args.get("id")
    print(id)
    cur = con.cursor()
    cur.execute("select * from familycars where Car_ID='"+id+"'")
    result = cur.fetchall()
    print(result)
    cur.close()
    return render_template("familysdetalis.html", data = result)

@app.route("/card", methods=["POST", "GET"])
def card():
    id = request.args.get("id")
    cur = con.cursor()
    cur.execute("select * from rentcar where Car_ID='"+id+"'")
    result = cur.fetchall()
    cur.close()
    return render_template("card.html", data = result)

@app.route("/carcass", methods=["POST", "GET"])
def carcass():
    id = request.args.get("id")
    cur = con.cursor()
    cur.execute("select * from caraccessories  where ID='"+id+"'")
    result = cur.fetchall()
    cur.close()
    return render_template("carcass.html", data = result)




@app.route("/familycars")
def familycars():
    cur = con.cursor()
    cur.execute("select * from familycars")
    result = cur.fetchall()
    cur.close()
    return render_template("familycars.html", data=result)

@app.route("/carrent")
def carrent():
    cur = con.cursor()
    cur.execute("select * from rentcar")
    result = cur.fetchall()
    cur.close()
    return render_template("carrent.html", data=result)


@app.route("/caraccessories")
def caraccessories():
    cur = con.cursor()
    cur.execute("select * from caraccessories")
    result = cur.fetchall()
    cur.close()
    return render_template("caraccessories.html", data=result)



@app.route("/carentry")
def customerentry():
    return render_template("carentry.html")

@app.route("/carsave", methods=["POST","GET"])
def carsave():
    if request.method == "POST":
        a=request.form["Car_ID"]
        b=request.form["Car_Name"]
        c=request.form["Car_Image"]
        d=request.form["Car_Details"]
        e=request.form["Car_Color"]
        f=request.form["Full_Type"]
        g=request.form["Car_Rate"]
        h=request.form["Speed"]
        i=request.form["Mileage"]
        j=request.form["Engine_Type"]
        cur=con.cursor()
        cur.execute("insert into customer values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"')")
        con.commit()
        cur.close()
    return redirect(url_for("supercars"))

@app.route("/customerdelete", methods=["POST","GET"])
def customerdelete():
    cid=request.args.get("cid")
    cur=con.cursor()
    cur.execute("delete from customer where car='"+cid+"'")
    con.commit()
    cur.close()
    return redirect(url_for("supercars"))

@app.route("/caredit", methods=["POST","GET"])
def caredit():
    cid = request.args.get("cid")
    cur = con.cursor()
    cur.execute("select * from supercars where car_ID='" + cid + "'")
    result = cur.fetchall()
    cur.close()
    return render_template("caredit.html",data=result)

@app.route("/carupdate", methods=["POST","GET"])
def carupdate():
    if request.method == "POST":
        a=request.form["car_ID"]
        b=request.form["Car_Name"]
        c=request.form["Car_Image"]
        d=request.form["Car_Details"]
        e=request.form["Car_Color"]
        f=request.form["Full_Type"]
        g=request.form["Car_Rate"]
        h=request.form["Speed"]
        i=request.form["Mileage"]
        j=request.form["Engine_Type"]
        cur=con.cursor()
        cur.execute("update supercars set Car_Name='"+b+"', car_Image='"+c+"', Car_Details='"+d+"', Car_Color='"+e+"',Full_Type='"+f+"', Car_Rate='"+g+"" 
        "Speed='"+h+"', Mileage='"+i+"',Engine_Type='"+j+"', where car_id='"+a+"'")
        con.commit()
        cur.close()
        return redirect(url_for("supercar"))

@app.route("/customersave", methods=["POST","GET"])
def customersave():
    if request.method == "POST":
        a=request.form["Car_ID"]
        b=request.form["Car_Name"]
        c=request.form["Car_Image"]
        d=request.form["Car_Details"]
        e=request.form["Car_Colour"]
        f=request.form["Fuel_Type"]
        g=request.form["Car_Rate"]
        h=request.form["speed"]
        i=request.form["Mileage"]
        j=request.form["Engine_Type"]
        k=request.form["salestype"]
        cur=con.cursor()
        cur.execute("insert into supercars values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"')")
        con.commit()
        cur.close()
        return redirect(url_for("detalissc"))


@app.route("/carorder", methods=["POST","GET"])
def carorder():
    if request.method == "POST":
        a = request.form["Customer_ID"]
        b = request.form["Name"]
        c = request.form["Phone_Number"]
        d = request.form["Address"]
        e = request.form["Gmail_ID"]
        f = request.form["Car_Name"]
        cur=con.cursor()
        cur.execute("insert into order2 values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')")
        con.commit()
        cur.close()
        return render_template("ordertwo.html")



if (__name__ =="__main__"):
    app.run()